# $OpenBSD: Makefile,v 1.4 2002/09/12 01:40:35 lebel Exp $

COMMENT=	"Z shell, Bourne shell-compatible, release flavor"
COMMENT-zftp=	"Z shell embedded ftp client"

VERSION=	4.1.0-dev-5
PKGNAME=	zsh-${VERSION:C/-//g}
DISTNAME=	zsh-${VERSION}
CATEGORIES=	shells
NEED_VERSION=	1.474
MASTER_SITES=	ftp://ftp.zsh.org/zsh/development/ \
		http://www.zsh.org/pub/development/ \
		ftp://ftp.sterling.com/zsh/development/ \
		ftp://ftp.rge.com/pub/zsh/development/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/development/ \
		ftp://mrrl.lut.ac.uk/zsh/development/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/development/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/development/

HOMEPAGE=	http://www.zsh.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	static
.if ${MACHINE_ARCH:Malpha}
# for the time being, force static on alpha
FLAVOR?=        static
.else
FLAVOR?=
.endif

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free

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
RUN_DEPENDS=	::shells/zsh/snapshot
.  endif
CONFIGURE_ARGS+= ${CONFIGURE_SHARED:S/shared/dynamic/}
.endif

SUBST_VARS=	VERSION

REGRESS_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
	        INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp
	        
.include <bsd.port.mk>
