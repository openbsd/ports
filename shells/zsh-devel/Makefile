# $OpenBSD: Makefile,v 1.13 2000/03/31 16:31:08 espie Exp $

DISTNAME=       zsh-3.1.6
CATEGORIES=	shells
NEED_VERSION=	1.240
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=		Yes
CONFIGURE_ARGS=	--enable-zsh-mem --enable-zsh-secure-free --enable-dynamic
FAKE=		Yes


# zsh-devel REALLY doesn't want DESTDIR where I want it... so coerce it.

post-configure:
	@perl -pi.bak -e 's,/usr/local,\$${DESTDIR}/usr/local,' ${WRKBUILD}/Makefile

FLAVORS=static
.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=	LDFLAGS=-static
.endif


.include <bsd.port.mk>
