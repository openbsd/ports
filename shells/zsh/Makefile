# $OpenBSD: Makefile,v 1.35 2005/02/07 16:19:19 robert Exp $

COMMENT=	"Z shell, Bourne shell-compatible, release flavor"
COMMENT-zftp=	"Z shell embedded ftp client"

VERSION=	4.2.4
DISTNAME=	zsh-${VERSION}
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		${HOMEPAGE}pub/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

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
