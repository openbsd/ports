# $OpenBSD: Makefile,v 1.3 2001/11/13 13:53:08 wilfried Exp $

COMMENT=	"creates cover for audio cds using cddb and latex"

DISTNAME=	disc-cover-1.2.2
CATEGORIES=     audio
NEED_VERSION=	1.438

HOMEPAGE=	http://eek.wi.leidenuniv.nl/~jvhemert/disc-cover

MAINTAINER=	Nikolay Sturm <Nikolay.Sturm@desy.de>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/unstable/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
RUN_DEPENDS=	latex::print/teTeX/base \
		convert::graphics/ImageMagick \
		${PERL_MODULES}/LWP.pm::www/p5-libwww \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/Audio/CD.pm::audio/p5-Audio-CD

NO_REGRESS=	Yes

do-build:
	@cd ${WRKSRC}; \
	pod2man disc-cover disc-cover.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/disc-cover ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/disc-cover.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
