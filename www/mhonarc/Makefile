# $OpenBSD: Makefile,v 1.33 2019/07/12 20:50:48 sthen Exp $

COMMENT=		highly customizable e-mail to HTML converter

DISTNAME=		MHonArc-2.6.19
REVISION=		0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		www mail

HOMEPAGE=		http://www.mhonarc.org/

MASTER_SITES=		http://www.mhonarc.org/release/MHonArc/tar/ \
			http://mhonarc.domainunion.de/release/MHonArc/tar/

MAINTAINER=		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv2
PERMIT_PACKAGE=	Yes

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mhonarc/mha-mhedit
	cd ${WRKSRC}/examples && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/mhonarc
	cd ${WRKSRC}/extras && ${INSTALL_DATA} ${EXTRAS} \
	  ${PREFIX}/share/examples/mhonarc/mha-mhedit

.include <bsd.port.mk>
