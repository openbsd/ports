# $OpenBSD: Makefile,v 1.26 2006/09/18 10:21:49 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Tk 8.4 bindings for Perl"
COMMENT-demo=	"demonstrate the features of ptk"

VERSION=	804.027
DISTNAME=	Tk-${VERSION}
PKGNAME=	p5-Tk-${VERSION}p0
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel perl5

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tk/}

MULTI_PACKAGES=	-demo
SUBPACKAGE?=

LIB_DEPENDS=	png.>=4::graphics/png
RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes

CONFIGURE_STYLE= perl

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=	DISPLAY="${DISPLAY}" XAUTHORITY="${HOME}/.Xauthority"

pre-configure:
	@perl -i -pe 's,%%LOCALBASE%%,${LOCALBASE},g' ${WRKSRC}/PNG/Makefile.PL

pre-regress:
.ifndef DISPLAY
	@echo requires access to X11; exit 1
.endif

.if empty(SUBPACKAGE)
WANTLIB=		X11 m z
.endif

.if defined(PACKAGING) && !empty(SUBPACKAGE)
LIB_DEPENDS=
RUN_DEPENDS=	::x11/p5-Tk
.endif

.include <bsd.port.mk>
