# $OpenBSD: Makefile,v 1.11 2015/05/10 19:12:25 jasper Exp $

COMMENT=	deductive database system similar to Prolog

DISTNAME=	datalog-2.5
SHARED_LIBS +=  datalog                   0.0 # 0.0
CATEGORIES=	lang

HOMEPAGE=	http://datalog.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m readline termcap

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=datalog/}

# perl libtool loses -llua somewhere along the way
USE_LIBTOOL=		gnu

MODULES=		lang/lua
MODLUA_SA=		Yes

CONFIGURE_STYLE=	gnu

# Some extra checks in addition to the check target
post-test:
	cd ${WRKSRC} && /bin/sh try.sh

.include <bsd.port.mk>
