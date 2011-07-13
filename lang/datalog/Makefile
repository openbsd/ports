# $OpenBSD: Makefile,v 1.3 2011/07/13 11:39:24 jasper Exp $

COMMENT=	deductive database system similar to Prolog

DISTNAME=	datalog-1.6
CATEGORIES=	lang

HOMEPAGE=	http://www.ccs.neu.edu/home/ramsdell/tools/datalog/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=		${HOMEPAGE} \
			${MASTER_SITE_SOURCEFORGE:=datalog/}

MODULES=		lang/lua

CONFIGURE_STYLE=	gnu

# Some extra checks in addition to the check target
post-regress:
	cd ${WRKSRC} && /bin/sh try.sh

.include <bsd.port.mk>
