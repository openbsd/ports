# $OpenBSD: Makefile,v 1.3 2001/06/03 15:42:38 brad Exp $

COMMENT=	"the Z shell, Bourne shell-compatible, release flavor"
COMMENT-modules="the Z shell modules (without zftp)"
COMMENT-zftp=	"the Z shell embedded ftp client"

VERSION=	4.0.1
DISTNAME=	zsh-${VERSION}
CATEGORIES=	shells
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.zsh.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	static
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
CONFIGURE_ARGS+=--disable-dynamic
.else
# we only enable sub-packages if the FLAVOR is not static
MULTI_PACKAGES=	-modules -zftp
SUBPACKAGE?=
.for i in ${MULTI_PACKAGES}
PKGNAME$i=	zsh$i-${VERSION}
.endfor
CONFIGURE_ARGS+= ${CONFIGURE_SHARED:S/shared/dynamic/}
.endif

SUBST_VARS=	VERSION

.include <bsd.port.mk>
