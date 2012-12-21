# $OpenBSD: Makefile,v 1.2 2012/12/21 09:42:28 jasper Exp $

COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-1.13
REVISION=		0
CATEGORIES=		lang java

HOMEPAGE=		http://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		1.6+

VMEM_WARNING=		Yes

USE_GMAKE=		Yes
USE_GROFF=		Yes

WANTLIB += c ncurses readline

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-kawa-frontend
CONFIGURE_ENV=		JAVAC=${JAVA_HOME}/bin/javac \
			JAVA=${JAVA_HOME}/bin/java

pre-patch:
	find ${WRKSRC} -type f | \
		xargs perl -pi -e 's,^JAR =.*,JAR = ${JAVA_HOME}/bin/jar,g'

.include <bsd.port.mk>
