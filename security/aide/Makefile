# $OpenBSD: Makefile,v 1.12 2007/09/15 23:29:57 merdely Exp $

COMMENT=		Advanced Intrusion Detection Environment

V=			0.10
DISTNAME=		aide-${V}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

BUILD_DEPENDS=		::devel/bison \
			::security/mhash

HOMEPAGE=		http://www.cs.tut.fi/~rammer/aide.html

MAINTAINER=		Benoit LECOCQ <blq@arcane-labs.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=aide/}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-mhash
CONFIGURE_ENV+=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
