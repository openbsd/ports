# $OpenBSD: Makefile,v 1.10 2000/10/22 17:02:40 espie Exp $

DISTNAME=	rc-1.6
CATEGORIES=	plan9 shells
NEED_VERSION=	1.310
MASTER_SITES=	http://www.star.le.ac.uk/~tjg/rc/release/ \
		ftp://ftp.sys.toronto.edu/pub/rc/
MASTER_SITES0=	http://www.star.le.ac.uk/~tjg/rc/misc/
SUPDISTFILES=	editline-1.5.tar.gz:0

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-history

FLAVORS=	readline editline
FLAVOR?=

.if defined(WITH_READLINE) && ${WITH_READLINE:U} == YES
FLAVOR+=readline
.elif defined(WITH_EDITLINE) && ${WITH_EDITLINE:U} == YES
FLAVOR+=editline
.endif

.if ${FLAVOR:L} == "readline"
CONFIGURE_ARGS+= --with-readline
.elif ${FLAVOR:L} == "editline"
DISTFILES=	${DISTNAME}.tar.gz editline-1.5.tar.gz:0
EDITLINE=	${WRKSRC}/../editline
CONFIGURE_ARGS+= --with-editline
CONFIGURE_ENV=	LIBS="-L${EDITLINE}"
.endif

.if ${FLAVOR:L} == "editline"
pre-configure:
	@echo "===>  Compiling editline"
	@cd ${EDITLINE} && ${MAKE_PROGRAM}
.endif

.include <bsd.port.mk>
