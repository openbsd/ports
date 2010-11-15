# $OpenBSD: Makefile,v 1.28 2010/11/15 00:22:53 espie Exp $

DISTNAME=	sybperl-2.18
PKGNAME=	p5-${DISTNAME}
REVISION=	6
CATEGORIES=	databases perl5
USE_GROFF =	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	m sybdb>=5 ct>=3

SHARED_ONLY=	Yes

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
