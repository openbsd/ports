# $OpenBSD: Makefile,v 1.17 2003/10/08 17:13:17 sturm Exp $

COMMENT=	"Tk 8.0 bindings for Perl"
COMMENT-demo=	"demonstrate the features of ptk"

VERSION=	800.024
DISTNAME=	Tk-${VERSION}
PKGNAME=	p5-Tk-${VERSION}
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel perl5

MAINTAINER=	Shell Hung <shell@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

BUILD_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE=	perl

MULTI_PACKAGES=		-demo
SUBPACKAGE?=

WRKDIST=	${WRKDIR}/Tk${VERSION}

REGRESS_IS_INTERACTIVE=	Yes
MAKE_ENV=	XAUTHORITY=${HOME}/.Xauthority

pre-regress:
.ifndef DISPLAY
	@echo requires access to X; exit 1
.endif

.include <bsd.port.mk>
