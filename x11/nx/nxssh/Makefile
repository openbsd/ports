# $OpenBSD: Makefile,v 1.22 2017/04/10 11:46:36 sthen Exp $

COMMENT=	OpenSSH client and daemon for NX

DASH_VER=	2
DISTNAME=	nxssh-${MAJOR_VERSION}-${DASH_VER}
PKGNAME=	nxssh-${MAJOR_VERSION}.${DASH_VER}
REVISION=	7

CATEGORIES=	net

WANTLIB += Xcomp c crypto jpeg m png ${LIBCXX} util z

MASTER_SITES=	https://distfiles.nl/

LIB_DEPENDS=	x11/nx/nxcomp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bsd-auth \
		--with-cflags="${CFLAGS}" \
		--without-pam \
		--disable-strip
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nx" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/nxssh

MAKE_FLAGS=	ASKPASS_PROGRAM=${X11BASE}/bin/ssh-askpass \
		SFTP_SERVER=/usr/libexec/sftp-server \
		SSH_KEYSIGN=/usr/libexec/ssh-keysign

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/NX/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/nxssh ${PREFIX}/NX/bin

.include <bsd.port.mk>
