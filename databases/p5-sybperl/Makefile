# $OpenBSD: Makefile,v 1.10 2004/01/12 15:44:53 jcs Exp $

DISTNAME=	sybperl-2.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.mbay.net/~mpeppler/
MASTER_SITES=	http://www.peppler.org/downloads/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MODULES=	gettext
LIB_DEPENDS=	tds.3,sybdb.4,ct.2::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
