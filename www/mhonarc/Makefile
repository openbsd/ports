# $OpenBSD: Makefile,v 1.26 2010/10/19 08:02:54 espie Exp $

COMMENT=		highly customizable e-mail to HTML converter

DISTNAME=		MHonArc-2.6.16
PKGNAME=		${DISTNAME:L}
CATEGORIES=		www mail

HOMEPAGE=		http://www.mhonarc.org/

MASTER_SITES=		http://www.mhonarc.org/release/MHonArc/tar/ \
			http://www.nacs.uci.edu/indiv/ehood/tar/ \
			ftp://ftp.plig.org/pub/CPAN/authors/id/EHOOD/

MAINTAINER=		Christian Rueger <cr+openbsd@rueger-net.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

CONFIGURE_ARGS=		PREFIX='$${${DESTDIRNAME}}${PREFIX}' \
			INSTALLSITELIB='$${${DESTDIRNAME}}${PREFIX}/libdata/perl5/site_perl' \
			INSTALLPRIVLIB='$${${DESTDIRNAME}}/usr/./libdata/perl5' \
			INSTALLMAN1DIR='$${${DESTDIRNAME}}${PREFIX}/man/man1' \
			INSTALLMAN3DIR='$${${DESTDIRNAME}}${PREFIX}/man/man3p'

ALL_TARGET=		default
USE_GROFF =	Yes

EXAMPLES=		mha-preview mhasiteinit.pl mhonarc.vim *.mrc
EXTRAS=			mha-mhedit/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/mha-mhedit
	cd ${WRKSRC}/examples && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/mhonarc
	cd ${WRKSRC}/extras && ${INSTALL_DATA} ${EXTRAS} \
	  ${PREFIX}/share/examples/mhonarc/mha-mhedit

.include <bsd.port.mk>
