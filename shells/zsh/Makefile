# $OpenBSD: Makefile,v 1.20 2000/07/05 02:05:28 brad Exp $

DISTNAME=	zsh-3.0.8
CATEGORIES=	shells
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

HOMEPAGE=	http://www.zsh.org/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free

FLAVORS=static
FLAVOR?=

.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=	LDFLAGS=-static
.endif

.include <bsd.port.mk>
