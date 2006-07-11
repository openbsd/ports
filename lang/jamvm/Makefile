# $OpenBSD: Makefile,v 1.3 2006/07/11 16:01:24 kurt Exp $

COMMENT=	"a free, standards-compilant jvm with a small footprint"

ONLY_FOR_ARCHS=	i386 powerpc arm amd64

DISTNAME=	jamvm-1.4.3

CATEGORIES=	lang java

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jamvm/}

HOMEPAGE=	http://jamvm.sourceforge.net/

MAINTAINER=	Frederick C. Druseikis <fredd@cse.sc.edu>

# GPL 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

RUN_DEPENDS=		:classpath->=0.91:lang/classpath

WANTLIB=		c m z pthread

CONFIGURE_ARGS+=	--with-classpath-install-dir=${LOCALBASE}

.include <bsd.port.mk>
