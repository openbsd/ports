# $OpenBSD: Makefile,v 1.4 2002/12/22 01:40:56 margarida Exp $

COMMENT=		"MS SQL audit tools"

DISTNAME=		sqlat-src-1.0.0
PKGNAME=		sqlat-1.0.0
CATEGORIES=		security

HOMEPAGE=		http://www.cqure.net/

MASTER_SITES=		${HOMEPAGE}/tools/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		tds.0,ct.0::databases/freetds \
			iconv::converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=		${WRKDIR}/sqlat
NO_REGRESS=		Yes

pre-build:
	@rm -f ${WRKBUILD}/include/tds*.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sqlat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sqlat

.include <bsd.port.mk>
