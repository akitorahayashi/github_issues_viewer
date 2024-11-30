import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issues_viewer/model/repository_owner/repository_owner.dart';
import 'package:github_issues_viewer/view/account_page/repository_list/owner_card.dart';
import 'package:github_issues_viewer/view/account_page/repository_list/repository_row.dart';

class RepositoryList extends ConsumerWidget {
  final RepositoryOwner owner;
  const RepositoryList({super.key, required this.owner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        const SizedBox(height: 16),
        OwnerCard(owner: owner),
        for (final repo in owner.repositories) RepositoryRow(repository: repo),
      ],
    );
  }
}