# $OpenBSD: Makefile,v 1.6 2006/09/22 13:33:00 steven Exp $

COMMENT=		"Perl Interface to Amazon.{co.uk,com} Web Services"

DISTNAME=		Net-Amazon-0.35
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

MAINTAINER=		Sam Smith <s@msmith.net>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-XML-Simple->=2.08:textproc/p5-XML-Simple \
		::devel/p5-Log-Log4perl \
		:p5-libwww-*:www/p5-libwww

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-Amazon
	cd ${WRKDIR}/${DISTNAME}/eg; \
	for i in *; do \
		${INSTALL_SCRIPT}  $$i ${PREFIX}/share/examples/p5-Net-Amazon; \
	done

.include <bsd.port.mk>
