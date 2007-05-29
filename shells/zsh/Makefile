# $OpenBSD: Makefile,v 1.41 2007/05/29 16:57:00 naddy Exp $

COMMENT-main=	"Z shell, Bourne shell-compatible"
COMMENT-zftp=	"Z shell embedded ftp client"

VERSION=	4.2.6
DISTNAME=	zsh-${VERSION}
PKGNAME-main=	${DISTNAME}p2
PKGNAME-zftp=	zsh-zftp-${VERSION}
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		${HOMEPAGE}pub/ \
		http://mirrors.dotsrc.org/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		http://www.math.technion.ac.il/pub/zsh/ \
		ftp://ftp.demon.nl/pub/mirrors/zsh/ \
		ftp://sunsite.icm.edu.pl/pub/unix/shells/zsh/ \
		http://zsh.open-mirror.com/

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
		--enable-maildir-support --with-tcsetpgrp

# we only enable zftp if shared libraries are available
MULTI_PACKAGES= -main ${NO_SHARED_LIBS:S/Yes//:S/No/-zftp/}

RUN_DEPENDS-zftp=	::shells/zsh

SUBST_VARS=	VERSION

# required for regression tests
PORTHOME=	${WRKDIR}

REGRESS_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
	        INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp
	        
.include <bsd.port.mk>
