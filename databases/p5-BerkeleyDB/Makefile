# $OpenBSD: Makefile,v 1.2 2005/01/12 21:31:06 sturm Exp $

COMMENT=		"Berkeley DB module"

DISTNAME=		BerkeleyDB-0.26
PKGNAME=		p5-${DISTNAME}p0
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

.include <bsd.port.mk>
