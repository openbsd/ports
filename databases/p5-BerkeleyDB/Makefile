# $OpenBSD: Makefile,v 1.15 2010/11/06 22:50:02 espie Exp $

COMMENT=		Berkeley DB module
SHARED_ONLY=		Yes

DISTNAME=		BerkeleyDB-0.34
REVISION=		2
CATEGORIES=		databases
MODULES=		cpan

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4
USE_GROFF =	Yes

LIB_DEPENDS =		:db->=4,<5:databases/db/v4
WANTLIB +=		lib/db4/db.>=4
REGRESS_DEPENDS =	::devel/p5-MLDBM

.include <bsd.port.mk>
