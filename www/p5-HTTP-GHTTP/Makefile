# $OpenBSD: Makefile,v 1.4 2002/05/15 17:58:51 espie Exp $

COMMENT=	"perl interface to the Gnome GHTTP library"

DISTNAME=	HTTP-GHTTP-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	ghttp.1::www/libghttp

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
