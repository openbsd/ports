# original taken from FreeBSD
# $OpenBSD: Makefile,v 1.9 2000/03/24 23:28:22 espie Exp $
#

DISTNAME=	fileutils-4.0
CATEGORIES=	misc
NEED_VERSION=	 1.230
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= fileutils
SEPARATE_BUILD=concurrent

#WANT_NLS=yes

.if defined(WANT_NLS)
NLS_CHOICE=--enable-nls
RUN_DEPENDS=	gettext::devel/gettext
LIB_DEPENDS=	intl::devel/gettext 
PLIST=${PKGDIR}/PLIST.nls
PKGNAME=gnuls-4.0-nls
.else
NLS_CHOICE=--disable-nls
PKGNAME=	gnuls-4.0
.endif

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS=--program-transform-name=s,ls,gnuls, ${NLS_CHOICE}

post-install:
	@for i in linuxls vdir dir; \
		do cd ${PREFIX}/man/man1 && ln -fs gnuls.1 $$i.1; \
			cd ${PREFIX}/bin && ln -f gnuls $$i; \
		done

.include <bsd.port.mk>
