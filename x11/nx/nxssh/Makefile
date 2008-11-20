# $OpenBSD: Makefile,v 1.2 2008/11/20 23:17:38 jasper Exp $

COMMENT=	OpenSSH client and daemon for NX

VERSION=	3.2.0
DASH_VER=	1
DISTNAME=	nxssh-${VERSION}-${DASH_VER}
PKGNAME=	nxssh-${VERSION}.${DASH_VER}p0
CATEGORIES=	net

WANTLIB=	asn1 c com_err crypto des gssapi jpeg krb5 m png stdc++ util z

LIB_DEPENDS=	Xcomp::x11/nx/nxcomp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bsd-auth \
		--with-kerberos5=/usr \
		--with-cflags="${CFLAGS}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nx -I/usr/include/kerberosV/" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/nxssh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nxssh ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/nxssh-keygen ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/nxsshd ${PREFIX}/sbin

.include <bsd.port.mk>
