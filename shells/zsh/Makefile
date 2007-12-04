# $OpenBSD: Makefile,v 1.43 2007/12/04 19:26:56 okan Exp $

COMMENT=	Z shell, Bourne shell-compatible

VERSION=	4.3.4
DISTNAME=	zsh-${VERSION}
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		${HOMEPAGE}pub/ \
		http://mirrors.dotsrc.org/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		http://www.math.technion.ac.il/pub/zsh/ \
		ftp://ftp.demon.nl/pub/mirrors/zsh/ \
		ftp://sunsite.icm.edu.pl/pub/unix/shells/zsh/

HOMEPAGE=	http://www.zsh.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m termcap 

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED:S/shared/dynamic/} \
		--enable-zsh-mem --enable-zsh-secure-free \
		--enable-maildir-support --with-tcsetpgrp \
		--enable-multibyte

SUBST_VARS=	VERSION

# required for regression tests
PORTHOME=	${WRKDIR}

REGRESS_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp

pre-configure:
	@cp ${FILESDIR}/zshcalsys.1 ${WRKSRC}/Doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/${VERSION}/scripts/

.include <bsd.port.mk>
