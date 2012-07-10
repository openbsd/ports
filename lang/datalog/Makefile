# $OpenBSD: Makefile,v 1.6 2012/07/10 15:22:45 jasper Exp $

COMMENT=	deductive database system similar to Prolog

DISTNAME=	datalog-2.2
REVISION=	0
SHARED_LIBS +=  datalog                   0.0 # 0.0
CATEGORIES=	lang

HOMEPAGE=	http://www.ccs.neu.edu/home/ramsdell/tools/datalog/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m readline termcap

MASTER_SITES=		${HOMEPAGE} \
			${MASTER_SITE_SOURCEFORGE:=datalog/}

# perl libtool loses -llua somewhere along the way
USE_LIBTOOL=		gnu

MODULES=		lang/lua
MODLUA_SA=		Yes

CONFIGURE_STYLE=	gnu

# Some extra checks in addition to the check target
post-regress:
	cd ${WRKSRC} && /bin/sh try.sh

.include <bsd.port.mk>
