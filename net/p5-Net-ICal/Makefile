# $OpenBSD: Makefile,v 1.2 2007/01/14 20:49:05 simon Exp $

COMMENT=	"Perl interface to RFC2445 (iCalendar) objects"

MODULES=	cpan
DISTNAME=	Net-ICal-0.15
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-MethodMapper \
		::devel/p5-Date-Calc \
		::devel/p5-Date-ICal
BUILD_DEPENDS=	${RUN_DEPENDS}

EXAMPLESDIR=	${PREFIX}/share/examples/p5-Net-ICal

post-install:
	@${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	@${INSTALL_SCRIPT} ${WRKSRC}/examples/*.* ${EXAMPLESDIR}

.include <bsd.port.mk>
