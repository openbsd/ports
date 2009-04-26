# $OpenBSD: Makefile,v 1.7 2009/04/26 09:38:25 sthen Exp $

COMMENT =	pure-Java implementation of the Ruby language

V =		1.1.3
RUBY_REV =	1.8
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}p2
CATEGORIES =	lang lang/ruby

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Bernd Ahlers <bernd@openbsd.org>

# CPL/GPL/LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://dist.codehaus.org/jruby/

MODULES =	java
MODJAVA_VER =	1.5+
MODJAVA_JRERUN = Yes

BUILD_DEPENDS =	::devel/apache-ant
RUN_DEPENDS =	::java/javaPathHelper

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} 
JRUBY_LIBDIR =	${PREFIX}/lib/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
SUBST_VARS =	JRUBY_LIBDIR RUBY_REV

# disable regress tests for now. i have to figure out how to run them
# properly
NO_REGRESS =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/src/org/jruby/runtime/load/LoadService.java \
		${WRKSRC}/src/org/jruby/libraries/RbConfigLibrary.java

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant

post-build:
	@${SUBST_CMD} ${WRKBUILD}/bin/jruby

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jgem ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jirb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jirb_swing ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jruby ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jrubyc ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/rake ${PREFIX}/bin/jrake
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/rdoc ${PREFIX}/bin/jrdoc
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/ri ${PREFIX}/bin/jri
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/spec ${PREFIX}/bin/jspec
	${INSTALL_DATA_DIR} ${JRUBY_LIBDIR}
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_LIBDIR} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_LIBDIR}

.include <bsd.port.mk>
