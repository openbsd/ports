# $OpenBSD: Makefile,v 1.9 2011/03/02 08:48:16 jasper Exp $

COMMENT=	OpenSSH client and daemon for NX

DASH_VER=	2
DISTNAME=	nxssh-${MAJOR_VERSION}-${DASH_VER}
PKGNAME=	nxssh-${MAJOR_VERSION}.${DASH_VER}

CATEGORIES=	net

WANTLIB += Xcomp asn1 c com_err crypto gssapi jpeg krb5 m png
WANTLIB += stdc++ util z

LIB_DEPENDS=	x11/nx/nxcomp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bsd-auth \
		--with-kerberos5=/usr \
		--with-cflags="${CFLAGS}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nx -I/usr/include/kerberosV/" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/nxssh

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/NX/bin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/NX/sbin
.for i in nxssh nxssh-keygen
	${INSTALL_PROGRAM} ${WRKBUILD}/${i} ${PREFIX}/NX/bin
.endfor
	${INSTALL_PROGRAM} ${WRKBUILD}/nxsshd ${PREFIX}/NX/sbin

.include <bsd.port.mk>
