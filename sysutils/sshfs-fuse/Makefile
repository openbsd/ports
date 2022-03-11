COMMENT =	mount remote directories over ssh

DISTNAME =	sshfs-2.10
PKGNAME =	${DISTNAME:S/-/-fuse-/}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/libfuse/sshfs

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c fuse glib-2.0 gthread-2.0 intl pthread

MASTER_SITES =	${HOMEPAGE}/releases/download/${DISTNAME}/

LIB_DEPENDS =	devel/glib2

CONFIGURE_STYLE =	gnu

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
