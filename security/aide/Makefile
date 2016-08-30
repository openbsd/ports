# $OpenBSD: Makefile,v 1.24 2016/08/30 06:21:31 benoit Exp $

COMMENT=		Advanced Intrusion Detection Environment

DISTNAME=		aide-0.16
CATEGORIES=		security
REVISION =		0

HOMEPAGE=		http://sourceforge.net/projects/aide

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=aide/}

BUILD_DEPENDS=		devel/bison \
			devel/pcre \
			security/mhash

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-mhash
CONFIGURE_ENV+=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
