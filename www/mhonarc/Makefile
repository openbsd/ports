# $OpenBSD: Makefile,v 1.15 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"highly customizable e-mail to HTML converter"

VERSION=		2.5.13
DISTNAME=		MHonArc${VERSION}
PKGNAME=		mhonarc-${VERSION}
CATEGORIES=     	www mail

HOMEPAGE=		http://www.mhonarc.org/

MASTER_SITES=		http://www.mhonarc.org/release/MHonArc/tar/ \
			http://www.nacs.uci.edu/indiv/ehood/tar/ \
			ftp://ftp.plig.org/pub/CPAN/authors/id/EHOOD/ 

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
			@chmod -R u+w ${WRKDIST}

CONFIGURE_STYLE=	perl
ALL_TARGET=		default

EXAMPLES=		mha-preview mhasiteinit.pl mhonarc.vim *.mrc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/examples	
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/extras
	cd ${WRKSRC}/examples && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/mhonarc/examples
	cd ${WRKSRC}/extras && ${INSTALL_DATA} HtmlMail MosaicMail \
	  ${PREFIX}/share/examples/mhonarc/extras
 
.include <bsd.port.mk>
