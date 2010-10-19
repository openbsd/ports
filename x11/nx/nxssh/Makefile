# $OpenBSD: Makefile,v 1.6 2010/10/19 07:52:11 jsg Exp $

COMMENT=	OpenSSH client and daemon for NX

DASH_VER=	1
DISTNAME=	nxssh-${MAJOR_VERSION}-${DASH_VER}
PKGNAME=	nxssh-${MAJOR_VERSION}.${DASH_VER}

REVISION=	1

CATEGORIES=	net

WANTLIB += asn1 c com_err crypto gssapi jpeg krb5 m png stdc++ Xcomp
WANTLIB += util z

LIB_DEPENDS=	::x11/nx/nxcomp

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
