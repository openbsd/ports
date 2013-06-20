# $OpenBSD: Makefile,v 1.14 2013/06/20 06:54:38 ajacoutot Exp $

COMMENT=	OpenSSH client and daemon for NX

DASH_VER=	2
DISTNAME=	nxssh-${MAJOR_VERSION}-${DASH_VER}
PKGNAME=	nxssh-${MAJOR_VERSION}.${DASH_VER}
REVISION=	2

CATEGORIES=	net

WANTLIB += Xcomp asn1 c com_err crypto gssapi jpeg krb5 m png
WANTLIB += heimbase kafs pthread roken wind
WANTLIB += stdc++ util z

LIB_DEPENDS=	x11/nx/nxcomp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bsd-auth \
		--with-kerberos5=/usr \
		--with-cflags="${CFLAGS}"
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
