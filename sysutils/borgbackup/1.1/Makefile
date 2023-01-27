PORTROACH =		limit:^1\.1\.

MODPY_EGG_VERSION =	1.1.18
REVISION =		3

WANTLIB =		${COMPILER_LIBCXX} b2 crypto m

LIB_DEPENDS =		security/libb2

# same cherry-pick as in net/py-msgpack (used by borg 1.2.x), see details in
# https://github.com/borgbackup/borg/pull/6149#issuecomment-1335632116 ff.
MASTER_SITES0 =		https://github.com/borgbackup/borg/
# merged "fix msgpack runtime on big-endian OpenBSD/sparc64"
# https://github.com/borgbackup/borg/pull/7181
PATCHFILES =		${PKGSTEM}-msgpack-fix-big-endian-{pull/}7181.patch:0
PATCH_DIST_STRIP =	-p1

.include <bsd.port.mk>
