# $OpenBSD: Makefile,v 1.37 2006/01/29 20:41:02 sturm Exp $

COMMENT=	"Z shell, Bourne shell-compatible, release flavor"
COMMENT-zftp=	"Z shell embedded ftp client"

VERSION=	4.2.6
DISTNAME=	zsh-${VERSION}
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		${HOMEPAGE}pub/ \
		http://mirrors.dotsrc.org/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		http://www.math.technion.ac.il/pub/zsh/ \
		ftp://ftp.demon.nl/pub/mirrors/zsh/ \
		ftp://sunsite.icm.edu.pl/pub/unix/shells/zsh/ \
		ftp://sunsite.org.uk/package/zsh/ \
		http://zsh.open-mirror.com/

HOMEPAGE=	http://www.zsh.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	static

.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Mvax}
# for the time being, force static on alpha and vax
FLAVOR?=        static
.else
FLAVOR?=
.endif

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free \
		--enable-maildir-support --with-tcsetpgrp

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
CONFIGURE_ARGS+=--disable-dynamic
.else
# we only enable sub-packages if the FLAVOR is not static
MULTI_PACKAGES=	-zftp
SUBPACKAGE?=
.  for i in ${MULTI_PACKAGES}
PKGNAME$i=	zsh$i-${VERSION:C/-//g}
.  endfor
.  if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	::shells/zsh
.  endif
CONFIGURE_ARGS+= ${CONFIGURE_SHARED:S/shared/dynamic/}
WANTLIB=	c m termcap 
.endif

SUBST_VARS=	VERSION

REGRESS_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
	        INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp
	        
.include <bsd.port.mk>
