# $OpenBSD: Makefile,v 1.1.1.1 2004/04/11 12:11:11 sturm Exp $

COMMENT=	"Perl interface to RFC2445 (iCalendar) objects"

DISTNAME=	Net-ICal-0.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

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
