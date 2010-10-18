# $OpenBSD: Makefile,v 1.18 2010/10/18 21:41:44 espie Exp $

COMMENT=		Advanced Intrusion Detection Environment

DISTNAME=		aide-0.15.1
CATEGORIES=		security

HOMEPAGE=		http://sourceforge.net/projects/aide

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=aide/}

BUILD_DEPENDS=		::devel/bison \
			::security/mhash

USE_GMAKE=		Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-mhash
CONFIGURE_ENV+=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
