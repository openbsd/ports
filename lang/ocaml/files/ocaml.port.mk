# $OpenBSD: ocaml.port.mk,v 1.3 2002/11/26 20:11:24 sturm Exp $

# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.native.foo    -- nativecode files for FLAVOR == foo
# PFRAG.native.no-foo -- nativecode files for FLAVOR != foo

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "sparc"
MODOCAML_NATIVE=Yes

# include nativecode base files
SED_PLIST+=	|sed -e '/^%%native%%$$/r${PKGDIR}/PFRAG.native' -e '//d'

# create sed substitution for nativecode FLAVORS
.  if !empty(FLAVORS)
.    for _i in ${FLAVORS:L}
.      if empty(FLAVOR:L:M${_i})
SED_PLIST+=	|sed -e '/^!%%native\.${_i}%%$$/r${PKGDIR}/PFRAG.native.no-${_i}' -e '//d' -e '/^%%native\.${_i}%%$$/d'
.      else
SED_PLIST+=	|sed -e '/^!%%native\.${_i}%%$$/d' -e '/^%%native\.${_i}%%$$/r${PKGDIR}/PFRAG.native.${_i}' -e '//d' 
.      endif
.    endfor
.  endif

.else

MODOCAML_NATIVE=No
RUN_DEPENDS+=	::lang/ocaml

# remove native base file entry from PLIST
SED_PLIST+=	|sed -e '/^%%native%%$$/d'

# remove nativecode FLAVOR entries from PLIST
.  if !empty(FLAVORS)
.    for _i in ${FLAVORS:L}
SED_PLIST+=	|sed -e '/^!%%native\.${_i}%%$$/d' -e '/^%%native\.${_i}%%$$/d'
.    endfor
.  endif
.endif

BUILD_DEPENDS+=	::lang/ocaml
