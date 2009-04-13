# $OpenBSD: Makefile,v 1.1.1.1 2009/04/13 20:45:05 sthen Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-1.3.5
CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c

MASTER_SITES =		http://www.pell.portland.or.us/~orc/Code/markdown/

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

INSTALL_TARGET =	install.everything
REGRESS_TARGET =	test

pre-configure:
	@perl -pi -e 's,\./markdown,\./discount,' ${WRKSRC}/tests/*.t

.include <bsd.port.mk>
