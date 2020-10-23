#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/40978f23/JNIFunc.o \
	${OBJECTDIR}/_ext/c4f97062/Canvas.o \
	${OBJECTDIR}/_ext/c4f97062/ColorTable.o \
	${OBJECTDIR}/_ext/c4f97062/Draw.o \
	${OBJECTDIR}/_ext/c4f97062/dwg_utility.o \
	${OBJECTDIR}/_ext/c4f97062/matrix.o \
	${OBJECTDIR}/_ext/c4f97062/quat.o \
	${OBJECTDIR}/_ext/c4f97062/vector.o \
	${OBJECTDIR}/_ext/db5448cf/bits.o \
	${OBJECTDIR}/_ext/db5448cf/common.o \
	${OBJECTDIR}/_ext/db5448cf/decode.o \
	${OBJECTDIR}/_ext/db5448cf/decode_r2007.o \
	${OBJECTDIR}/_ext/db5448cf/dwg.o \
	${OBJECTDIR}/_ext/db5448cf/encode.o \
	${OBJECTDIR}/_ext/db5448cf/logging.o \
	${OBJECTDIR}/_ext/db5448cf/print.o \
	${OBJECTDIR}/_ext/44708a80/OpenGLWrapper.o \
	${OBJECTDIR}/_ext/44708a80/memory_allocator.o \
	${OBJECTDIR}/_ext/44708a80/triangulate.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libxProjectCAMLib.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libxProjectCAMLib.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libxProjectCAMLib.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared -fPIC

${OBJECTDIR}/_ext/40978f23/JNIFunc.o: /media/Data/xProjectCAM/xProjectCAMLib/JNIFunc.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/40978f23
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/40978f23/JNIFunc.o /media/Data/xProjectCAM/xProjectCAMLib/JNIFunc.cpp

${OBJECTDIR}/_ext/c4f97062/Canvas.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/Canvas.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/Canvas.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/Canvas.c

${OBJECTDIR}/_ext/c4f97062/ColorTable.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/ColorTable.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/ColorTable.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/ColorTable.c

${OBJECTDIR}/_ext/c4f97062/Draw.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/Draw.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/Draw.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/Draw.c

${OBJECTDIR}/_ext/c4f97062/dwg_utility.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/dwg_utility.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/dwg_utility.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/dwg_utility.c

${OBJECTDIR}/_ext/c4f97062/matrix.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/matrix.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/matrix.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/matrix.c

${OBJECTDIR}/_ext/c4f97062/quat.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/quat.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/quat.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/quat.c

${OBJECTDIR}/_ext/c4f97062/vector.o: /media/Data/xProjectCAM/xProjectCAMLib/c-sources/vector.c
	${MKDIR} -p ${OBJECTDIR}/_ext/c4f97062
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c4f97062/vector.o /media/Data/xProjectCAM/xProjectCAMLib/c-sources/vector.c

${OBJECTDIR}/_ext/db5448cf/bits.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/bits.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/bits.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/bits.c

${OBJECTDIR}/_ext/db5448cf/common.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/common.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/common.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/common.c

${OBJECTDIR}/_ext/db5448cf/decode.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/decode.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/decode.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/decode.c

${OBJECTDIR}/_ext/db5448cf/decode_r2007.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/decode_r2007.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/decode_r2007.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/decode_r2007.c

${OBJECTDIR}/_ext/db5448cf/dwg.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/dwg.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/dwg.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/dwg.c

${OBJECTDIR}/_ext/db5448cf/encode.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/encode.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/encode.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/encode.c

${OBJECTDIR}/_ext/db5448cf/logging.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/logging.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/logging.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/logging.c

${OBJECTDIR}/_ext/db5448cf/print.o: /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/print.c
	${MKDIR} -p ${OBJECTDIR}/_ext/db5448cf
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/db5448cf/print.o /media/Data/xProjectCAM/xProjectCAMLib/lib-dwg-master/print.c

${OBJECTDIR}/_ext/44708a80/OpenGLWrapper.o: /media/Data/xProjectCAM/xProjectCAMLib/utility/OpenGLWrapper.c
	${MKDIR} -p ${OBJECTDIR}/_ext/44708a80
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/44708a80/OpenGLWrapper.o /media/Data/xProjectCAM/xProjectCAMLib/utility/OpenGLWrapper.c

${OBJECTDIR}/_ext/44708a80/memory_allocator.o: /media/Data/xProjectCAM/xProjectCAMLib/utility/memory_allocator.c
	${MKDIR} -p ${OBJECTDIR}/_ext/44708a80
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/44708a80/memory_allocator.o /media/Data/xProjectCAM/xProjectCAMLib/utility/memory_allocator.c

${OBJECTDIR}/_ext/44708a80/triangulate.o: /media/Data/xProjectCAM/xProjectCAMLib/utility/triangulate.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/44708a80
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/44708a80/triangulate.o /media/Data/xProjectCAM/xProjectCAMLib/utility/triangulate.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
