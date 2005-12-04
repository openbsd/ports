# $OpenBSD: Makefile,v 1.3 2005/12/04 20:15:56 jakob Exp $

COMMENT=		"Berkeley DB module"

DISTNAME=		BerkeleyDB-0.27
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		databases perl5

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=BerkeleyDB/}

CONFIGURE_STYLE=	perl
CONFIGURE_ENV+=		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4

LIB_DEPENDS=		lib/db4/db.=4:db-4.*:databases/db/v4
REGRESS_DEPENDS=	::devel/p5-MLDBM

.include <bsd.port.mk>
