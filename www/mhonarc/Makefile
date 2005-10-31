# $OpenBSD: Makefile,v 1.22 2005/10/31 14:01:33 naddy Exp $

COMMENT=		"highly customizable e-mail to HTML converter"

VERSION=		2.6.15
DISTNAME=		MHonArc-${VERSION}
PKGNAME=		${DISTNAME:L}
CATEGORIES=		www mail

HOMEPAGE=		http://www.mhonarc.org/

MASTER_SITES=		http://www.mhonarc.org/release/MHonArc/tar/ \
			http://www.nacs.uci.edu/indiv/ehood/tar/ \
			ftp://ftp.plig.org/pub/CPAN/authors/id/EHOOD/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
			@chmod -R u+w ${WRKDIST}

CONFIGURE_STYLE=	perl

CONFIGURE_ARGS=		PREFIX='$${${DESTDIRNAME}}${PREFIX}' \
			INSTALLSITELIB='$${${DESTDIRNAME}}${PREFIX}/libdata/perl5/site_perl' \
			INSTALLPRIVLIB='$${${DESTDIRNAME}}/usr/./libdata/perl5' \
			INSTALLMAN1DIR='$${${DESTDIRNAME}}${PREFIX}/man/man1' \
			INSTALLMAN3DIR='$${${DESTDIRNAME}}${PREFIX}/man/man3p'

ALL_TARGET=		default

EXAMPLES=		mha-preview mhasiteinit.pl mhonarc.vim *.mrc
EXTRAS=			mha-mhedit/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/extras
	cd ${WRKSRC}/examples && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/mhonarc/examples
	cd ${WRKSRC}/extras && ${INSTALL_DATA} ${EXTRAS} \
	  ${PREFIX}/share/examples/mhonarc/extras

.include <bsd.port.mk>
