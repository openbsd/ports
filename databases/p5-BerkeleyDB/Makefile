# $OpenBSD: Makefile,v 1.4 2006/12/14 17:47:55 dassow Exp $

COMMENT=		"Berkeley DB module"
SHARED_ONLY=		Yes

DISTNAME=		BerkeleyDB-0.27
PKGNAME=		p5-${DISTNAME}p0
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

LIB_DEPENDS=		lib/db4/db.=4:db-4.*:databases/db/v4
REGRESS_DEPENDS=	::devel/p5-MLDBM

.include <bsd.port.mk>
