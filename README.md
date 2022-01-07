# zig-libgit2

Zig bindings to [libgit2](https://github.com/libgit2/libgit2)

This is an in-progress zig binding to libgit2, unfortunately libgit2 doesn't full document all possible errors so every errorable function returns the full errorset.

There is currently no plan to port the headers within "include/git2/sys", if anyone requires that functionailty raise an issue.

## Files fully wrapped (others maybe partially complete)

- [X] annotated_commit.h
- [X] apply.h
- [X] attr.h
- [X] blame.h
- [X] blob.h
- [X] branch.h
- [X] buffer.h
- [X] cert.h
- [X] checkout.h
- [X] cherrypick.h
- [X] clone.h
- [X] commit.h
- [X] common.h
- [X] config.h
- [X] credential.h
- [X] describe.h
- [ ] diff.h
- [X] errors.h
- [X] filter.h
- [X] global.h
- [X] graph.h
- [X] ignore.h
- [X] index.h
- [X] indexer.h
- [X] mailmap.h
- [ ] merge.h
- [X] message.h
- [X] notes.h
- [X] object.h
- [ ] odb_backend.h
- [ ] odb.h
- [X] oid.h
- [X] oidarray.h
- [X] pack.h
- [ ] patch.h
- [ ] pathspec.h
- [ ] proxy.h
- [ ] rebase.h
- [ ] refdb.h
- [ ] reflog.h
- [ ] refs.h
- [X] refspec.h
- [X] remote.h
- [X] repository.h
- [ ] reset.h
- [ ] revert.h
- [ ] revparse.h
- [ ] revwalk.h
- [ ] signature.h
- [ ] stash.h
- [X] status.h
- [X] strarray.h
- [ ] submodule.h
- [ ] tag.h
- [ ] trace.h
- [ ] transaction.h
- [ ] transport.h
- [X] tree.h
- [X] worktree.h
