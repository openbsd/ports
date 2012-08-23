# $OpenBSD: Makefile,v 1.30 2012/08/23 14:54:31 sthen Exp $

DISTNAME=	sybperl-2.19
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c m sybdb>=5 ct>=3

SHARED_ONLY=	Yes

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
