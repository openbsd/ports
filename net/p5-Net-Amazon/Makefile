# $OpenBSD: Makefile,v 1.11 2009/06/02 22:27:49 merdely Exp $

COMMENT=		Perl Interface to Amazon.{co.uk,com} Web Services

MODULES=		cpan
DISTNAME=		Net-Amazon-0.50
CATEGORIES=		net

MAINTAINER=		Sam Smith <s@msmith.net>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
