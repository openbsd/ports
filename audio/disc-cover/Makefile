# $OpenBSD: Makefile,v 1.5 2002/02/02 06:10:37 pvalchev Exp $

COMMENT=	"creates cover for audio cds using cddb and latex"

DISTNAME=	disc-cover-1.3.1
CATEGORIES=     audio
NEED_VERSION=	1.504

HOMEPAGE=	http://eek.wi.leidenuniv.nl/~jvhemert/disc-cover

MAINTAINER=	Nikolay Sturm <Nikolay.Sturm@desy.de>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/unstable/

RUN_DEPENDS=	::print/teTeX/base \
		::graphics/ImageMagick \
		::www/p5-libwww \
		::audio/p5-Audio-CD

NO_REGRESS=	Yes

do-build:
	@cd ${WRKSRC}; \
	pod2man disc-cover disc-cover.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/disc-cover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/disc-cover.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/disc-cover
	${INSTALL_SCRIPT} ${WRKSRC}/freedb/index.cgi ${PREFIX}/share/examples/disc-cover
	${INSTALL_DATA} ${WRKSRC}/freedb/README ${PREFIX}/share/examples/disc-cover

.include <bsd.port.mk>
