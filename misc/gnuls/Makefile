# original taken from FreeBSD
# $OpenBSD: Makefile,v 1.3 1999/04/22 17:30:48 espie Exp $
#

DISTNAME=	fileutils-4.0
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= fileutils
SEPARATE_BUILD=concurrent

#WANT_NLS=yes

.if defined(WANT_NLS)
NLS_CHOICE=--enable-nls
RUN_DEPENDS=	gettext:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext 
PLIST=${PKGDIR}/PLIST.nls
PKGNAME=gnuls-4.0-nls
.else
NLS_CHOICE=--disable-nls
PKGNAME=	gnuls-4.0
.endif

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=--program-transform-name=s,ls,gnuls, ${NLS_CHOICE}

post-install:
	@for i in linuxls vdir dir; \
		do cd ${PREFIX}/man/man1 && ${LN} -fs gnuls.1 $$i.1; \
			cd ${PREFIX}/bin && ${LN} -f gnuls $$i; \
		done

.include <bsd.port.mk>
