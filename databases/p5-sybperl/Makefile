# $OpenBSD: Makefile,v 1.14 2004/09/28 01:10:35 jcs Exp $

DISTNAME=	sybperl-2.17
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.mbay.net/~mpeppler/
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sybase/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MODULES=	devel/gettext
LIB_DEPENDS=	tds.3,sybdb.4,ct.2::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
