1. `feature/localization/WALOCURATE-1234/some_additional_optional_descriptors_FooBar_XXX-YYY`:
  * The branch is for adding a localization-related feature.
  * The `WALOCURATE-1234` part is the related JIRA ticket. Note there are two JIRA projects for Alpha localization: WALOCURATE (usually curation related) and WALOCALIZATION (development related).
  * The last part `some_additional_optional_descriptors_FooBar_XXX-YYY` strictly uses underscores ('_') for delimiting words, so the word parts can contain dashes ('-') and can be CamelCased.
2. `bugfix/1234`:
  * The branch is for fixing a bug ticket on <bugs.wolfram.com>.
  * Replace '1234' with the bug number.
3. `bugfix/WALOCURATE-6789`:
  * the branch is for fixing a bug ticket on <jira.wolfram.com> which must have type=Bug.
  * Replace 'WALOCURATE-6789' with the JIRA issue key.
4. `bugfix/some_required_descriptors_FooBar_XXX-YYY`:
  * The branch is for fixing a bug but a bug ticket does not exist.
