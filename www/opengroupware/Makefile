# $OpenBSD: Makefile,v 1.4 2014/08/10 09:58:07 espie Exp $

COMMENT = 	web based groupware server

VERSION =	5.5rc2
REVISION=	1
DISTNAME =	opengroupware-${VERSION}

SHARED_LIBS +=  LSAddress                 0.0 # 5.5
SHARED_LIBS +=  LSFoundation              0.0 # 5.5
SHARED_LIBS +=  LSSearch                  0.0 # 5.5
SHARED_LIBS +=  NGiCal                    0.0 # 4.9
SHARED_LIBS +=  NGXmlRpc                  0.0 # 4.9
SHARED_LIBS +=  OGoAccounts               0.0 # 5.5
SHARED_LIBS +=  OGoBase                   0.0 # 5.5
SHARED_LIBS +=  OGoContacts               0.0 # 5.5
SHARED_LIBS +=  OGoDatabaseProject        0.0 # 5.5
SHARED_LIBS +=  OGoDocuments              0.0 # 5.5
SHARED_LIBS +=  OGoFileSystemProject      0.0 # 5.5
SHARED_LIBS +=  OGoFoundation             0.0 # 5.5
SHARED_LIBS +=  OGoJobs                   0.0 # 5.5
SHARED_LIBS +=  OGoProject                0.0 # 5.5
SHARED_LIBS +=  OGoRawDatabase            0.0 # 5.5
SHARED_LIBS +=  OGoScheduler              0.0 # 5.5
SHARED_LIBS +=  OGoSchedulerTools         0.0 # 5.5
SHARED_LIBS +=  OGoWebMail                0.0 # 5.5
SHARED_LIBS +=  ZSAppointments            0.0 # 5.5
SHARED_LIBS +=  ZSBackend                 0.0 # 5.5
SHARED_LIBS +=  ZSContacts                0.0 # 5.5
SHARED_LIBS +=  ZSFrontend                0.0 # 5.5
SHARED_LIBS +=  ZSProjects                0.0 # 5.5
SHARED_LIBS +=  ZSTasks                   0.0 # 5.5

CATEGORIES =	www
HOMEPAGE =	http://sourceforge.net/projects/opengroupware/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opengroupware/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c DOM EOControl GDLAccess NGExtensions NGLdap NGMime
WANTLIB += NGObjWeb NGStreams SaxObjC WEExtensions WOExtensions
WANTLIB += XmlRpc ldap

MODULES =		apache-module x11/gnustep converters/libiconv
MODGNUSTEP_NEEDS_GUI =	No
MODAPACHE_NAME =	ngobjweb
MODAPACHE_LOCATION =	${WRKBUILD}/SOPE/mod_ngobjweb

LIB_DEPENDS +=		www/sope
RUN_DEPENDS +=		sope-postgres-*|sope-mysql-*:www/sope,-postgres \
			archivers/zip archivers/unzip

CONFIGURE_STYLE =	simple dest
CONFIGURE_ARGS +=	--prefix=${PREFIX}

MAKE_FLAGS +=	libLSAddress_INTERFACE_VERSION=${LIBLSAddress_VERSION} \
		libLSFoundation_INTERFACE_VERSION=${LIBLSFoundation_VERSION} \
		libLSSearch_INTERFACE_VERSION=${LIBLSSearch_VERSION} \
		libNGiCal_INTERFACE_VERSION=${LIBNGiCal_VERSION} \
		libNGXmlRpc_INTERFACE_VERSION=${LIBNGXmlRpc_VERSION} \
		libOGoBase_INTERFACE_VERSION=${LIBOGoBase_VERSION} \
		libOGoContacts_INTERFACE_VERSION=${LIBOGoContacts_VERSION} \
		libOGoAccounts_INTERFACE_VERSION=${LIBOGoAccounts_VERSION} \
		libOGoDatabaseProject_INTERFACE_VERSION=${LIBOGoDatabaseProject_VERSION} \
		libOGoDocuments_INTERFACE_VERSION=${LIBOGoDocuments_VERSION} \
		libOGoFileSystemProject_INTERFACE_VERSION=${LIBOGoFileSystemProject_VERSION} \
		libOGoFoundation_INTERFACE_VERSION=${LIBOGoFoundation_VERSION} \
		libOGoJobs_INTERFACE_VERSION=${LIBOGoJobs_VERSION} \
		libOGoProject_INTERFACE_VERSION=${LIBOGoProject_VERSION} \
		libOGoRawDatabase_INTERFACE_VERSION=${LIBOGoRawDatabase_VERSION} \
		libOGoScheduler_INTERFACE_VERSION=${LIBOGoScheduler_VERSION} \
		libOGoSchedulerTools_INTERFACE_VERSION=${LIBOGoSchedulerTools_VERSION} \
		libOGoWebMail_INTERFACE_VERSION=${LIBOGoWebMail_VERSION} \
		libZSAppointments_INTERFACE_VERSION=${LIBZSAppointments_VERSION} \
		libZSBackend_INTERFACE_VERSION=${LIBZSBackend_VERSION} \
		libZSContacts_INTERFACE_VERSION=${LIBZSContacts_VERSION} \
		libZSFrontend_INTERFACE_VERSION=${LIBZSFrontend_VERSION} \
		libZSProjects_INTERFACE_VERSION=${LIBZSProjects_VERSION} \
		libZSTasks_INTERFACE_VERSION=${LIBZSTasks_VERSION} \
		libOGoAsteriskCommands_INTERFACE_VERSION=${LIBOGoAsteriskCommands_VERSION} \
		libSkyInvoice_INTERFACE_VERSION=${LIBSkyInvoice_VERSION}

EXAMPLE_FILES =	opengroupware.conf NSGlobalDomain.plist ogo-webui.plist \
		ogo-zidestore.plist ogo-xmlrpcd.plist

SUBST_VARS +=	VARBASE

post-build:
	${MODAPACHE_CREATE_ENABLE_SCRIPT}

post-install:
	mkdir -p ${PREFIX}/share/examples/opengroupware
.for F in ${EXAMPLE_FILES}
	${SUBST_DATA} \
		${FILESDIR}/${F} ${PREFIX}/share/examples/opengroupware/${F}
.endfor
	${MODAPACHE_INSTALL}
	cp ${WRKSRC}/Database/PostgreSQL/pg-update-1.x-to-5.5.psql \
		${PREFIX}/lib/opengroupware/commands/OGo.model/Resources/

.include <bsd.port.mk>
