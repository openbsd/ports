# $OpenBSD: Makefile,v 1.8 2000/06/07 00:52:08 espie Exp $

#WITH_EDITLINE=	yes
DISTNAME=	rc-1.6
CATEGORIES=	plan9 shells
NEED_VERSION=	1.121
MASTER_SITES=	http://www.star.le.ac.uk/~tjg/rc/release/ \
		ftp://ftp.sys.toronto.edu/pub/rc/
MASTER_SITES0=	http://www.star.le.ac.uk/~tjg/rc/misc/


MAINTAINER=	markus@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= --with-history

FLAVORS=readline editline
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
CONFIGURE_ENV+=	LIBS="-L${EDITLINE}"
.endif


pre-configure:
.if ${FLAVOR:L} == "editline"
	@echo "===>  Compiling editline"
	cd ${EDITLINE} && make
.endif

.include <bsd.port.mk>
