# $OpenBSD: Makefile,v 1.2 1999/11/30 00:48:44 brad Exp $

WITH_EDITLINE=	yes
DISTNAME=	rc-1.6
CATEGORIES=	plan9 shells
MASTER_SITES=	http://www.star.le.ac.uk/~tjg/rc/release/ \
		ftp://ftp.sys.toronto.edu/pub/rc/
MASTER_SITES0=	http://www.star.le.ac.uk/~tjg/rc/misc/

NEED_VERSION=	1.121

MAINTAINER=	markus@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-history

.if defined(WITH_READLINE) && ${WITH_READLINE:U} == YES
CONFIGURE_ARGS+= --with-readline
.elif defined(WITH_EDITLINE) && ${WITH_EDITLINE:U} == YES
DISTFILES=	${DISTNAME}.tar.gz editline-1.5.tar.gz:0
EDITLINE=	${WRKSRC}/../editline
CONFIGURE_ARGS+= --with-editline
CONFIGURE_ENV+=	LIBS="-L${EDITLINE}"
.endif

pre-fetch:
.if !defined(NO_WARNINGS)
.if !defined(WITH_READLINE) && !defined(WITH_EDITLINE)
	@echo '*******************************************************' 
	@echo '* Note that you can build rc using the readline or    *'
	@echo '* editline library (emacs style command line editing) *'
	@echo '* by setting the shell variable WITH_READLINE or      *'
	@echo '* WITH_EDITLINE to yes                                *'
	@echo '*******************************************************' 
.endif
.endif

pre-configure:
.if defined(WITH_EDITLINE) && ${WITH_EDITLINE:U} == YES
	@${ECHO_MSG} "===>  Compiling editline"
	(cd ${EDITLINE} && make)
.endif

.include <bsd.port.mk>
