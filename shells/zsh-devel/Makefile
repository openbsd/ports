# $OpenBSD: Makefile,v 1.14 2000/07/05 03:51:24 brad Exp $

DISTNAME=       zsh-3.1.9
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

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free --enable-dynamic

FLAVORS=static
FLAVOR?=

.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=	LDFLAGS=-static
.endif

# zsh-devel REALLY doesn't want DESTDIR where I want it... so coerce it.

post-configure:
	@perl -pi.bak -e 's,/usr/local,\$${DESTDIR}/usr/local,' ${WRKBUILD}/Makefile

.include <bsd.port.mk>
