# OpenBSD makefile for:	gtar
# Version required:			1.12
# Date created:				14 Jan 1998
# Whom:					niklas
#
# $OpenBSD: Makefile,v 1.2 1999/03/07 01:38:58 brad Exp $
#

DISTNAME=	tar-1.12
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-install:
	strip ${PREFIX}/bin/gtar
	strip ${PREFIX}/libexec/grmt
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@echo
	@echo "*** You might want to setup a link to /etc/rmt by issuing:"
	@echo "*** ln -sf ${PREFIX}/libexec/grmt /etc/rmt"
	@echo "*** If so, you should try to remember to reset that link"
	@echo "*** to its former value if you ever pkg_delete this package."
	@echo

.include <bsd.port.mk>
