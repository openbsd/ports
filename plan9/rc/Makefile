# $OpenBSD: Makefile,v 1.1.1.1 1999/06/11 14:44:22 brad Exp $

DISTNAME=	rc-1.6
CATEGORIES=	plan9 shells
MAINTAINER=	markus.friedl@informatik.uni-erlangen.de
MASTER_SITES=	http://www.star.le.ac.uk/~tjg/rc/release/ \
		ftp://ftp.sys.toronto.edu/pub/rc/

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=  yes
CONFIGURE_ARGS+= --with-history

pre-fetch pre-build pre-install:
.if !defined(WITH_READLINE) && !defined(WITH_EDITLINE)
.if !defined(NO_WARNINGS)
	@${ECHO} '*******************************************************' 
	@${ECHO} '* Note that you can build rc using the readline or    *'
	@${ECHO} '* editline library (emacs style command line editing) *'
	@${ECHO} '* by setting the shell variable WITH_READLINE or      *'
	@${ECHO} '* WITH_EDITLINE to yes                                *'
	@${ECHO} '*******************************************************' 
.endif
.elif defined(WITH_READLINE) && ${WITH_READLINE}==yes
CONFIGURE_ARGS+= --with-readline
.elif defined(WITH_EDITLINE) && ${WITH_EDITLINE}==yes
EDITLINE=	${WRKSRC}/../editline/
DISTFILES=	${DISTNAME}.tar.gz editline-1.5.tar.gz
MASTER_SITES+=	http://www.star.le.ac.uk/~tjg/rc/misc/
CONFIGURE_ARGS+= --with-editline
CONFIGURE_ENV+=	LIBS="-L${EDITLINE}"
pre-configure:
	@${ECHO_MSG} "===>  Compiling editline"
	(cd ${EDITLINE} && ${MAKE})
.endif

.include <bsd.port.mk>
