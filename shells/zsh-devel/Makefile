# $OpenBSD: Makefile,v 1.7 1999/10/07 19:52:34 brad Exp $

DISTNAME=       zsh-3.1.6
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free --enable-dynamic

# invoke with -DSTATIC to build a static binary
.if defined(STATIC)
CONFIGURE_ENV+=	LDFLAGS=-static
PKGNAME= ${DISTNAME}-static
.endif

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	@install-info ${PREFIX}/info/zsh.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
