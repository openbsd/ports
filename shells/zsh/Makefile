# $OpenBSD: Makefile,v 1.13 1999/12/07 23:06:52 brad Exp $

DISTNAME=	zsh-3.0.7
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free

# invoke with -DSTATIC to build a static binary
.if defined(STATIC)
CONFIGURE_ENV+=	LDFLAGS=-static
PKGNAME=	${DISTNAME}-static
.endif

post-install:
	@install-info ${PREFIX}/info/zsh.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
